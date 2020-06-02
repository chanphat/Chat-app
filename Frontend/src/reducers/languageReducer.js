const defaultState = {};

const CHANGE_LANGUAGE = "CHANGE_LANGUAGE";

export default (state = defaultState, { type, payload }) => {
  switch (type) {
    case CHANGE_LANGUAGE:
      return payload;
    default:
      return state;
  }
};